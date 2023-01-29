function s=crit_conv(G,x0)
    syms x y
    dG = jacobian(G(x,y),[x,y]);
    M = double(subs(dG,{x,y},{x0(1),x0(2)}));
    s = norm(M,inf);
    if s < 1 %debe ser menor que 1 para poder usar el método del punto fijo
        fprintf("Cumple el criterio de convergencia.")
    else
        fprintf("NO cumple el criterio de convergencia.")
    end
end