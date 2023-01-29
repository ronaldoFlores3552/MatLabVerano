function CS = cifras_sig(error)
    k = 0;
    while error <=5*10^(-k)
        k = k + 1;
    end
    CS = k-1;
end