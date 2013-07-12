#include<iostream>
#include<cstdio>
using namespace std;
 
int main()
{
    char str[1000000];
    gets(str);
 
 
    if("" == str)
        return 0;
 
    int len = 0;
    int blanknum = 0;
    int i = 0;
 
    while(str[i] != '\0')
    {
        len++;
        if(str[i] == ' ')
            blanknum++;
        i++;    
    }
 
    int index_from = len + 1;
    int index_to = len + 1 + 2*blanknum;
 
    while((index_from>=0) && (index_to>index_from))
    {
        if(str[index_from] == ' ')
        {
            str[index_to--] = '0';
            str[index_to--] = '2';
            str[index_to--] = '%';
            index_from--;
        }
        else
            str[index_to--] = str[index_from--];
    }
 
    printf("%s",str);
    return 1;
}
