#include <stdio.h>
#include <math.h>

int findX(int,int);
int findY(int,int);

int findX(int m, int n) {
	
	int m2, n2;
	
	
	if (m < 0)
		m2 = m * -1;
	else
		m2 = m;
	
	
	if (n < 0)
		n2 = n * -1;
	else
		n2 = n;
		
	
	if (m2 > n2) 
		return m;
	else
		return n;
}

int findY(int o, int p) {
	
	if (o < p)
		return o;
	else
		return p;
}

int main() {
	int m, n;
	int o, p;
	int x, y;
	
	scanf("%d", &m);
	scanf("%d", &n);
	scanf("%d", &o);
	scanf("%d", &p);
	
	x = findX(m,n);
	y = findY(o,p);
	
	int max = x*x - 3*y + x;
	
	printf("(%d,%d)", x, y);
	
	printf("\n%d", max);
	
	return 0;
}
