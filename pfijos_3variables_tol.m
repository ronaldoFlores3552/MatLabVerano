function z=pfijos_3variables_tol(g,x0,Tol)
    error = 1;
    z = [g(x0(1),x0(2),x0(3))' error];
    while error > Tol
        x1 = g(x0(1),x0(2),x0(3));
        error = norm(x1-x0,inf)/norm(x1);
        z = [z;x1' error];
        x0=x1;
    end
end