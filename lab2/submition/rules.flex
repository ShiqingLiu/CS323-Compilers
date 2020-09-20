/*ipv6:[[1-9a-fA-F][0-9a-fA-F]{0,3}|[0]:]{7}[1-9a-fA-F][0-9a-fA-F]{0,3}|[0]
/*ipv4:

%{
#include <math.h>

int IPv6=0;
}%


IPv6_first_digit    [1-9a-fA-F]
IPv6_rest_digit     [0-9a-fA-F]{0,3}
IPv6_one_eight      (({IPv6_first_digit})(IPv6_rest_digit))|[0]
IPv6                (IPv6_one_eight:){7}IPv6_one_eight

%%

{IPv6}  {IPv6=1;}

%%
int main(){
    
}