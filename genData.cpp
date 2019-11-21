#include <cstdio>
#include <iostream>
#include <cstdlib>

using namespace std;

int main(int argc, char **argv) {
	FILE *outFile = fopen("in.txt", "w");
	int m = atoi(argv[1]);
	int n = atoi(argv[2]);
	int b = atoi(argv[3]);
	int mod = atoi(argv[4]);
	fprintf(outFile, "%d %d %d %d\n", m, n, n, b);

	for (int i = 0; i < m; i++) {
		for (int j = 0; j < n; j++) {
			fprintf(outFile, "%d%c", rand() % mod, j == n - 1 ? '\n' : ' ');
		}
	}
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < b; j++) {
			fprintf(outFile, "%d%c", rand() % mod, j == b - 1 ? '\n' : ' ');
		}
	}
	return 0;
}
