function [S,n]= expo_matrix(M)
    S=0;n=0;CS=0;
    A=expm(M);
    while CS<8
        S= S +(M^n)/factorial(n);
        Er= abs((A-S)/A);
        CS=cifras_sig(Er);
        n=n+1;
    end
end