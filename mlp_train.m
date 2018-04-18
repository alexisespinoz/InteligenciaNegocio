function [mse]= mlp_train(datax,datay,W,maxiter,mu)
  L=length(W)+1;
  z=cell(L);
  for iter = 1:maxiter
    fprintf('aqui')
    z=mlp_fp(datax,W)
    [W mse(iter)]=mlp_upd_w(datay,z,W,mu)
    if (mod(iter,100)==0)
      fprintf('\n iteration sv MSE: %d--%f',iter,mse(iter))
    endif
  end
  %mse=mse
endfunction