#include <stdio.h>

int main()
{
    int falhas = 0;
    int medicao = 1; //diferente de zero
    
    while(medicao != 0) {
        scanf("%d", &medicao);
        if(medicao < 0)
            falhas++;
    
    }    
    printf("%d", falhas);
    return 0;
}
