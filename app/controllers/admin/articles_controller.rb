class Admin::ArticlesController < ApplicationController
	def index 
	  @articles = Article.all
	  puts "Article = #{@articles}"
	  puts "Article size = #{@articles.size}"
	  @articles.each do |article| 
	  	puts "Article Title = #{article[:title]}"
	  end	
	end	
end
