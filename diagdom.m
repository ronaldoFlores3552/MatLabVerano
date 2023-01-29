function op=diagdom(A)
    %op=0: diagonal estrictamente dominante
    %op=1: No es diagonal estrictamente dominante
    [m,n]=size(A)
    op=0;
    if m==n
        for k=1:m
            if abs(A(k,k))<=sum(abs(A(k,:)))-abs(A(k,k))
                op=1;
                break;
            end
        end
    end
    
    if op
        fprintf('No es diagonal estrictamente dominante');
    else
        fprintf('diagonal estrictamente dominante');
    end
end