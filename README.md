# CallKitSiriAnnouncementDemo
Prerequisite:
a. User activated Announce Calls setting in Setting app:
Settings app -> Phone -> Annouce Calls -> Always
b. Run on physical device. It doesn't work on Simulator.

Repro steps:
1. Tap on "Make Incoming Call"
2. Observe incoming call banner appears

Result: Siri announce the incoming user's name "Test Username", but then at the end speak something like "test handle"

Expected: Siri should announces just the display user anme "Test Username"
