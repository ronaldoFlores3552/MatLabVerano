function z=newton_Tol_Maxiter(f,x0,tol,maxiter)
    syms x
    df=diff(f(x));
    dfu=matlabFunction(df);
    iter= 0;
    error=1;
    z=[iter x0 error];
    while error>tol && iter<maxiter
        x1= x0 - f(x0)/dfu(x0);
        iter=iter+1;
        error=abs(x1-x0)/abs(x1);
        z=[z;iter x1 error];
        x0=x1;
    end
end