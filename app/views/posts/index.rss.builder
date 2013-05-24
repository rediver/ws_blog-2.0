xml.instruct! :xml, version: "1.0"
xml.rss version: "2.0" do 
  xml.channel do 
    xml.title "WS Blog" 
    xml.decription "The most awesome blog" 
    xml.link posts_url 
    
    @posts.each do |post|
      xml.item do 
        xml.title post.title 
        xml.decription post.desc
        xml.link post_url(post)
        xml.guid post_url(post)
      end  
    end 
  
  end
end  