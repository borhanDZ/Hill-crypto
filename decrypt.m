function msg = decrypt(code,cle)

chart = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',',','!','?'];
%transfer� la "cl�" a l'inverse
   cle = Inverse(cle);
%__Eliminer l'espace entre les lettres
   code = El_espace(code);
% convert code -----> :in tableau T
  
 for i = 1 : size(code,2)
    for j = 1 : size(chart,2)
        
       if (code(i) == chart(j))    
           T(1,i)=j-1; 
       end
    end
 end
  %convert tableau T -----> matrix Mat avec la cl� "2*2" or "3*3"
   Mat = Tab_matrix(cle,T);

  %produit la cl� pour matrix "Mat" 
   Mat = produit(cle,Mat);
   
  % modulo 29
 for i = 1 : size(Mat,1)
    for j= 1 : size(Mat,2)
        Mat(i,j) = mod(Mat(i,j),29);
    end
 end
 % transfer� matrix mat ------->: tableau T
  T = matrix_Tab(Mat); 
 
 % transfer� T ------->: message
   for i = 1 : size(T,2)
    for j = 1 : size(chart,2)
        
       if (T(i) == j-1)    
           msg(1,i)= chart(j); 
       end
    end
   end
       
      
end

