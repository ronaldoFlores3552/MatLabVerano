function [z]=jacobi_Maxiter(A,b,x0,Tol,maxiter)
    D=diag(diag(A));
    L=-tril(A,-1);
    U=-triu(A,1);
    k=0;
    Tj=inv(D)*(L+U);
    cj=inv(D)*b;
    error=1;
    z=[k x0' error];
    while error>Tol && k<maxiter
        x1=Tj*x0+cj;
        error=norm(x1-x0,inf)/norm(x1,inf);
        k=k+1;
        z=[z;k x1' error];
        x0=x1;
    end
end