# ASL Learning App

## Research Notebook

The journal is our team's log of what happened. It records each team member's progress for the day: what we did, what problems were encountered and solved, any interesting things we observed. It's also a place to reflect our own process and explore issues such as what's going well, what isn't, and how we can improve.

### Sprint I (01/23-02/08)

### Sprint II (02/08-03/01)

##### User Interface (Matt)

Day 1 (Feb. 10): Researched user flow/UI/UX of similar applications to get an idea of what works and what doesn't. I also started on the activity/user flow diagram for the mobile application. No issues/problems encountered.

Day 2 (Feb. 15): Finished the activity/user flow diagram. Used Lucidchart web app for building the diagrams.

Day 3 (Feb. 18): I started on the UX/UI prototype using Adobe XD, no issues there yet and should be done in the next few days.

Day 4 (Feb. 20): Finished the UI/UX prototype using Adobe XD. We now have a visual idea of what the app could look like, which could improve our productivity and workload. 

##### Mobile App Flutter (Aakriti)
1. Downloaded and created hello world app on Android Studio. Working on it now for VSC. 02/15
2. Research:
 - Analyzing the intelligibility of real-time mobile sign language video transmitted below recommended standards: https://dl.acm.org/doi/10.1145/2661334.2661358
 - Designing SmartSignPlay: An Interactive and Intelligent American Sign Language App for Children who are Deaf or Hard of Hearing and their Families: https://dl.acm.org/doi/10.1145/2876456.2879483
 - Urgent mobile tool for hearing impaired, language dysfunction and foreigners at emergency situation: https://dl.acm.org/doi/10.1145/2628363.2633568
 - Using mobile devices to support communication between emergency medical responders and deaf people: https://dl.acm.org/doi/10.1145/1851600.1851605
 - A Personalizable Mobile Sound Detector App Design for Deaf and Hard-of-Hearing Users: https://dl.acm.org/doi/10.1145/2982142.2982171
 - Accessible System and Social Media Mobile Application for Deaf Users: ASM4Deaf: https://dl.acm.org/doi/10.1145/3524458.3547234

##### Machine Learning Model (Michael + Jari)
Day 1 (Feb. 10): Followed Notebook on Kaggle on how to make model for Sign Language based on the pictures
 - Created train, validation and test set
 - Trained the model
 - Achieved 99.08% accuracy on the test set
 - Visualized confusion matrix

Next Steps: How can we save and export the model? How can we make it a Lite Model to use it on mobile?
Problems: Tutorials show different formats of the dataset. Need to understand more deeply to adjust code if we run into problems

Day 2 (Feb. 13): Converted normal model to lite model using the standard converter provided by TensorFlow. Downloaded lite model.
Next: Use firebase to deploy lite model or upload lite model into flutter app before production already?

Day 3 (Feb. 15): Uploaded model on firebase. It is published and ready to be used. 

Day 4 (Feb. 17): Failed getting flutter to work.

Day 5 (Feb. 20): Downloaded flutter. Added firebase to it after going through many errors. Unable to add model plugin due to unmatching dependencies. Flutter seems very complicated for installation and set up. Might have to think about switching to React Native and Expo if other team members have the same errors. Additionally, might go away from Firebase, but instead load model into app locally. Disadvantage: Increases app size; Advantage: Simpler and more tutorials out there to follow

Day 6 (Feb. 22): Were able to add model maker library to project. Connect flutter to firebase. And download model when running iPhone simulator through XCode.
Next steps: 
- Document whole installation process so it can be reproduced.
- Add everybody to firebase project with their gmail
- Upload code on github for collaborative work
- Get it running in Android Studio

Day 7 (Feb. 27): Documented installation process. Added everybody to firebase. Uploaded code on github in new git repository due to merging conflicts with README.md... Need to do git exercise as a team to learn how to resolve conflicts. Connected everybody to firebase and downloaded same git repository on everybody's laptop. Despite following installation process, could only get it to work on Jari's laptop for now. Michael struggles with Windows. We agreed on using Visual Studio Code as an editor to stay uniform.
What would we do different next time? Document installation process in all detail while doing it!!!
