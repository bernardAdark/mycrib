module ApplicationHelper

	def nice_date(checkedoutdate)
		
		  checkedoutdate.strftime('%d ' '%B ' ", " '%Y ' "" '%I' ":" '%M' ' %p ') rescue "00.00"
	   
	end
end
