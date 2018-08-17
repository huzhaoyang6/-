     //弹出窗口
     function pageOpen(url,title,width,heigth){
      if(width==''|| width==null){
    	  width='500px';
      }
      if(heigth=='' || heigth==null){
    	  heigth='500px';
      }
      $.post('./'+url,function(data){
    	  layer.open({
    		 title:title,
     		 type:1,
     		 content:data,
     		 area:[width,heigth]
     	 });
    	  
      });
     }