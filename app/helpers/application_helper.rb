module ApplicationHelper
	def full_title(page_title)
		base_title = 'Store'
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end		
	end


	def hidden_div_if(condition, attr = {}, &block)
		if condition
			attr["style"] = "display: none"
		end
		content_tag("div", attr, &block)		
	end
end
