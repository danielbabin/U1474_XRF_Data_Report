function [cleaned]=apply_cutoff(mat,tol)%inc depths & EE
shape=size(mat);
x=mat(:,2:shape(2));% element data
d1=mahal(ilr(x),ilr(x));
mat=[mat d1];%combine xrf matrix w/ d1 vector
shape=size(mat);
mat=sortrows(mat,shape(2));%sort by d1
cutoff=tol*std(mat(:,shape(2)));
idx=mat(:,shape(2))>cutoff; %defines cutoff condition
mat(idx,:)=[];
cleaned=sortrows(mat,1);%resort data by depth
end
