function z= biseccion_Maxiter(f,a,b,maxiter)
    c=(a+b)/2;
    error=(b-a)/2;
    iter= 0;
    z=[iter a b c f(a) f(b) f(c) error];

    for iter=1:maxiter
        if f(a)*f(c)<0
            b=c;
        else
            a=c;
        end
        c=(b+a)/2;
        error=(b-a)/2;
        z=[z; iter a b c f(a) f(b) f(c) error];
    end
end