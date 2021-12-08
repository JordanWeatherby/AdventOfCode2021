#include <stdio.h>
#include <string.h>
int main() {

    char *inputs[][4] = {{"fdgacbe", "cefdb", "cefbgd", "gcbe"},{"fcgedb", "cgb", "dgebacf", "gc"}};

    int sum = 0;
    for (int i=0; i < sizeof(inputs)/sizeof(inputs[0]); i++){
       for (int j=0; j< sizeof(inputs[0])/sizeof(inputs[0][0]); j++){
            int l = strlen(inputs[i][j]);
            printf("%s \n", inputs[i][j]);
            if(l == 2 || l == 4 || l == 3 || l == 7){ //number of segs in 1, 4, 7, 8 
                sum++;
            }
        } 
    }

    printf("%d \n", sum);
    return 0;
}
