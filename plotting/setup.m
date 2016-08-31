N = 30;

grid = h5read('../../data/T0_N30.h5', '/grid');
U = squeeze(grid(1,1:N,1:N,1:N));
V = squeeze(grid(2,1:N,1:N,1:N));
W = squeeze(grid(3,1:N,1:N,1:N));
l = 1:N;
[X,Y,Z] = meshgrid(l,l,l);

quiver3(X,Y,Z,U,V,W); axis equal; shg