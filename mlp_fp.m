function z = mlp_fp(x,W)
  L=length(W)+1;
  z=cell(L);
  z{1}=x;
  fprintf('hi')
  for i= 1:L-1
    z{i+1}=sigmoidAct(W{i}'*z{i}');
  endfor
endfunction

