DayAndNight
===========

A simple iOS application with a day and night mode.


###Step 1: Paint the NavigationBar
- Set the tint color and titletextattributes via the UIAppearance protocol in the app delegate

###Step 2: Setup the view
- Add a label with random text as a property on the viewcontroller
- Add a segment control with titles “Day” and “Night”
- Add an IBAction for when the segment control changes, and wire it up
- Add IBOutlets for the segment control and label

###Step 3: Update the view for day and night mode
- When the segment control changes, update the appearance of:
	- UINavigationBar tint color and TitleTextAttributes
	- SegmentControl background and tint color
- Also update the label’s text color and the view’s background color
