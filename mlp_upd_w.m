function [W mse]= mlp_upd_w(datay,z,W,mu)
  L=length(W)+1
  I_E=cell(1,L-1)
  I_E{L-1}=datay-z{L}
  mse= mean(I_E{L-1}.^2)
  for k=(L-1):-1:2
    I_delta{k}=I_E{k}.*sigmoidAct(z{k+1},1)
    I_E{k-1}=W{k}*I_delta{k};
  endfor
  I_delta{1}=I_E{1}.*sigmoidAct(z{2},1);
  for k = 1:L-1
    W{k} =W{k}+mu* z{k}*(I_delta{k})';
  endfor
endfunction
