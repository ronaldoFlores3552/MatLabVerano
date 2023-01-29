function [x k]=jacobi_2version(A,b,x0)
    %recibe como entradas la matriz A, vector b y pto semilla x0
    %devuelve la solucion y la cantidad de iteraciones
    n=length(b);
    x=x0;
    k=0; %numero de iteraciones
    error=1;
    tol=0.001
    d=diag(A);
    r=A-diag(d);
    while error>tol
        y=(b-r*x)./d;
        error=max(abs(x-y))/max(abs(y));
        x=y;
        k=k+1;
    end
end