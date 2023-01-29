function [z]=gausseidel_Maxiter(A,b,x0,Tol,maxiter)
    D=diag(diag(A));
    L=-tril(A,-1);
    U=-triu(A,1);
    Tgs=inv(D-L)*U;
    cgs=inv(D-L)*b;
    error=1;
    k=0;
    z=[k x0' error];
    while error>Tol && k<maxiter
        x1=Tgs*x0+cgs;
        error=norm(x1-x0,inf)/norm(x1,inf);
        k=k+1;
        z=[z;k x1' error];
        x0=x1;
    end
end