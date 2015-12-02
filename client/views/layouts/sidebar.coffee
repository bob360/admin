Template.sidebar.helpers

	displayName: ->

		if Meteor.user()
			if Meteor.user().name
				return Meteor.user().name
			else if Meteor.user().email
				return Meteor.user().email
			else
				return Meteor.user()._id
		else
			return "Nobody"
	
	avatar: ->
		if Meteor.user()
			if Meteor.user().avatar
				return Meteor.user().avatar
			else
				return "/avatar/" + Meteor.user().emails[0].address