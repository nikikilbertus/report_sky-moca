grid = h5read('../../data/T0_N30.h5', '/grid');
direction = '111';

N = 30;
U = squeeze(grid(1,1:N,1:N,1:N));
V = squeeze(grid(2,1:N,1:N,1:N));
W = squeeze(grid(3,1:N,1:N,1:N));
clear grid

l = 1:N;
[X,Y,Z] = meshgrid(l,l,l);

if direction == '111'
    x = zeros(N,1); y = x; z = linspace(0,1,N)';
    u = zeros(N,1); v = u; w = u;
    for i = 1:N
        u(i) = U(i,i,i);
        v(i) = V(i,i,i);
        w(i) = W(i,i,i);
    end
    quiver3(x,y,z,u,v,w); axis equal; shg
end