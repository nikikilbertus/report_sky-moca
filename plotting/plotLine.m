direction = '111';
x = zeros(N,1); y = x; z = linspace(0,1,N)';
u = zeros(N,1); v = u; w = u;

if direction == '111'
    for i = 1:N
        u(i) = U(i,i,i);
        v(i) = V(i,i,i);
        w(i) = W(i,i,i);
    end
elseif direction == '100'
    for i = 1:N
        u(i) = U(i,1,1);
        v(i) = V(i,1,1);
        w(i) = W(i,1,1);
    end
end
quiver3(x,y,z,u,v,w); axis equal; shg