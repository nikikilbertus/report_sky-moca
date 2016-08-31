plane = 'yz';
if plane == 'yz'
    for i = 1:N
        quiver3(X(i,:,:),Y(i,:,:),Z(i,:,:),U(i,:,:),V(i,:,:),W(i,:,:),'color',[1,0,0]); axis equal; shg
        pause;
    end
end