function z = newton_variasvariables(F,x0,Tol)
    syms x y
    dF = jacobian(F(x,y),[x,y]);
    error = 1;
    z = [x0' error]; %x y e
    iter = 0;
    while error > Tol
        x1 = x0 - inv(evalua(dF,x0)) * evalua(F,x0); 
        error = norm(x1-x0,inf)/norm(x1,inf); %error relativo
        z = [z; x1' error];
        x0 = x1;
        iter = iter + 1;
    end
    iter
    CS = cifras_sig(error)
end
function m=evalua(F,x0) %evaluar funcion
    syms x y
    m=double(subs(F,{x,y},{x0(1),x0(2)}));
end