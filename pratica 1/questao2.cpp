#include <stdio.h>

int calcula(int x,int y)
{
	return  x * x *(- 3 * y) + x;
		
}
int main()
{	
	int m, n, o , p;

	int x,y,z;

	x = n;
	y = m;

	int max = 0;

	if( m <= x && n <= x){
		
		if (o <= y && y <= p){
			max =  calcula(x,y);
		}
	}

	x = p;
	y = o;

	if( m <= x && n <= x){
		
		if(o <= y && y <= p){

			z = calcula(x,y);

			if(max < z ){
				max = z;
			}
		}
	}

	y = n;
	x = m;

	
	if( m <= x && n <= x){
		
		if (o <= y  && y<= p){
			z = calcula(x,y);

			if(max < z ){
				max = z;
			}
		}
	}

	y = p;
	x = o;

	if( m <= x && n <= x){
		
		if(o <= y && y <= p){

			z = calcula(x,y);


			if(max < z ){
				max = z;
			}
		}
	}

	printf("%d\n", max );
    
    return 0;
}