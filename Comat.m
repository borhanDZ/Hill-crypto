function com = Comat(m)

 if(size(m,1) == size(m,2))
    for i = 1 : size(m,1)
      for j = 1 : size(m,2)
        com(i,j) = puissance(-1,i,j)*determinant(cofacteur(i,j,m));
      end
    end
 end

end

