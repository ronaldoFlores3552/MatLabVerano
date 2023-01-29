function [z]=jacobi_tol(A,b,x0,Tol)
    D=diag(diag(A));
    L=-tril(A,-1);
    U=-triu(A,1);

    Tj=inv(D)*(L+U);
    cj=inv(D)*b;
    error=1;
    z=[x0' error];
    while error>Tol
        x1=Tj*x0+cj;
        error=norm(x1-x0,inf)/norm(x1,inf);
        z=[z;x1' error];
        x0=x1;
    end
end