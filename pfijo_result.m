function z=pfijo_result(g,x0,result)
    iter=0;
    z=[iter x0];
    while g(x0)<=result
        x1=g(x0);
        iter=iter+1;
        z=[z;iter x1];
        x0=x1;
    end
end