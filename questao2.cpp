#include <stdio.h>

int main()
{	
	int arr[4];
	char palavra[100000];
     
    
    for(int i = 0;i < 4 ;i++){
		scanf("%d", &arr[i]);
	} 
	
	for(int i = 0; i < 4 ; i++){

		scanf("%s", palavra);

		printf("%c", palavra[arr[i]]);
		
	}   
    
    return 0;
}