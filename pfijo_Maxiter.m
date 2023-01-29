function z=pfijo_Maxiter(g,x0,Maxiter)
    z=[x0];
    for k=1:Maxiter
        x1=g(x0);
        z=[z;x1];
        x0=x1;
    end
end