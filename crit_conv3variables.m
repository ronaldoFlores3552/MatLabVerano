function s=crit_conv3variables(G,x0)
    syms x y z
    dG = jacobian(G(x,y,z),[x,y,z]);
    M = double(subs(dG,{x,y,z},{x0(1),x0(2),x0(3)}));
    s = norm(M,inf);
    if s < 1 %debe ser menor que 1 para poder usar el método del punto fijo
        fprintf("Cumple el criterio de convergencia.")
    else
        fprintf("NO cumple el criterio de convergencia.")
    end
end