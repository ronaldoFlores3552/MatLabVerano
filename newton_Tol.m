function z=newton_Tol(f,x0,tol)
    syms x
    df=diff(f(x));
    dfu=matlabFunction(df);
    iter= 0;
    z=[iter x0];
    error=1;
    while error>tol
        x1= x0 - f(x0)/dfu(x0);
        iter=iter+1;
        z=[z;iter x1];
        error=abs(x1-x0)/abs(x1);
        x0=x1;
    end
end