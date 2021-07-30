def tile_chain_dominos(str)
    str = str.split(",") 
    n = 0
    long_seq = 0
    len=str.length-2
    for i in 0..len  
      if str[i][2]==str[i+1][0]    
        (n==0)? n+=2 : n+=1
      elsif n>long_seq
        long_seq=n     
        n=0
      end
    end
    if long_seq<n      
        long_seq=n
    end
    puts long_seq
  end
  tile_chain_dominos('1-1,3-5,5-2,2-3,2-4')
  tile_chain_dominos('3-2,2-1,1-4,4-4,5-4,4-2,2-1')
  tile_chain_dominos('5-5,5-5,4-4,5-5,5-5,5-5,5-5,5-5,5-5,5-5')
  tile_chain_dominos('1-1,3-5,5-5,5-4,4-2,1-3')
  tile_chain_dominos('1-2,2-2,3-3,3-4,4-5,1-1,1-2')
