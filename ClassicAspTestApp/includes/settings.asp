<%

	Dim  ApplicationName
	ApplicationName = "Classic ASP Test App"
	
	Function Greeting()
		If Hour(Now) < 12 Then
			Greeting = "Good morning"
		ElseIf Hour(Now) < 18 Then
			Greeting = "Good afternoon"
		Else
			Greeting = "Good evening"
		End If
	End Function

%>