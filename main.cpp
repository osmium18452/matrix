#include <iostream>
#include <cstdio>
#include <cstring>
#include <ctime>
#include <omp.h>
#define THREADS atoi(argv[3])

using namespace std;

int main(int argc, char **argv) {
	if (argc != 4) {
		printf("PLEASE RUN THE CODE USING COMMAND main inputFile outputFile threads\n");
		return 0;
	}
	clock_t startTime,endTime;

	printf("BEGIN READING...\n");
	startTime=omp_get_wtime();
	int n, m, a, b;
	FILE *inFile = fopen(argv[1], "r");
	FILE *outFile = fopen(argv[2], "w");
	fscanf(inFile, "%d%d%d%d", &m, &n, &a, &b);
	int **A = (int **) malloc(m * sizeof(int *));
	for (int i = 0; i < m; i++) A[i] = (int *) malloc(n * sizeof(int));

	int **B = (int **) malloc(a * sizeof(int *));
	for (int i = 0; i < a; i++) B[i] = (int *) malloc(b * sizeof(int));

	int **C = (int **) malloc(m * sizeof(int *));
	for (int i = 0; i < b; i++) {
		C[i] = (int *) malloc(b * sizeof(int));
		memset(C[i], 0, b * sizeof(int));
	}

	for (int i = 0; i < m; i++) {
		for (int j = 0; j < n; j++) {
			fscanf(inFile, "%d", &A[i][j]);
		}
	}
	for (int i = 0; i < a; i++) {
		for (int j = 0; j < b; j++) {
			fscanf(inFile, "%d", &B[i][j]);
//			printf("%d ",B[i][j]);
		}
//		cout<<endl;
	}
	endTime=omp_get_wtime();
	printf("FILES READ. TAKES %.3lf SECONDS\n",(double)(endTime-startTime));

	printf("BEGIN CALCULATING...\n"
		"USING %d PROCESSORS...\n",THREADS);
	startTime=omp_get_wtime();
#pragma omp parallel for num_threads(THREADS)
	for (int i = 0; i < m; i++) {
		for (int j = 0; j < b; j++) {
			for (int k = 0; k < n; k++) {
				C[i][j] += A[i][k] * B[k][j];
			}
		}
	}
	endTime=omp_get_wtime();
	printf("CALCULATION DONE. TAKES %.3lf SECONDS.\n",(double)(endTime-startTime));

	printf("WRITING...\n");
	for (int i = 0; i < m; i++) {
		for (int j = 0; j < b; j++) {
			fprintf(outFile, "%d%c", C[i][j], j == b - 1 ? '\n' : ' ');
		}
	}
	printf("FINISHED.\n");
	return 0;
}