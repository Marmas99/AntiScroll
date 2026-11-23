# AntiScroll requirements (EARS)

## EARS Overview
EARS stands for Easy Approach to Requirements Syntax, which is a structured way to capture requirements for a system.
- Ubiquitous: Ubiquitous requirements are always active. They have no EARS keyword because there is no triggering condition.
- Event Driven: Event-driven requirements specify how a system must respond when a triggering event occurs. They are denoted by the keyword WHEN.
- State Driven: State-driven requirements are active as long as a specified state remains true. They are denoted by the keyword WHILE.
- Optional feature: Optional feature requirements apply only in products or system variants that include a specified feature. They are denoted by the keyword WHERE.
- Unwanted Behaviour: Unwanted behaviour requirements specify the required system response to undesired situations such as faults, failures or errors. They are denoted by the keywords IF and THEN.
- Complex requirements: The simple building blocks above can be combined to specify richer system behaviour. Complex requirements use more than one EARS keyword


## Ubiquitous Requirements
- AntiScroll shall require no internet connection to function correctly.
- AntiScroll shall store everything locally to ensure offline functionality.
- AntiScroll shall be connected to "IOS screentime" functionality.
- AntiScroll shall always provide the users a way to unlock the apps from "IOS screentime" when needed in its settings.
- AntiScroll shall only tick the allowance time down when the user activates the time. 
- AntiScroll's habits shall reset each day. 
- AntiScroll shall persist the allowance time across app restarts and device reboots.
- AntiScroll's allowance time will only reach zero if the user actively uses the screen time and does not manually lock it beforehand.

## Event Driven Requirements
- When the user opens AntiScroll, AntiScroll shall ask for permissions to access "IOS screentime" functionality. To reach "connected" state
- When the user creates a "habit", AntiScroll shall open the habit creation interface.
- When the user blocks apps, AntiScroll shall tell "screentime" to enforce the block.
- When the user completes a "habit", AntiScroll shall record the completion and update the habit progress and fill the screentime allowance according to the habit settings.
- When the user unlocks screen time, AntiScroll shall start the timer for the allowed screen time.
- When the user unlocks the screen time, AntiScroll shall unlock the apps from "IOS screentime".
- When the user manually locks the screen time allowance, AntiScroll shall lock the apps and stop the timer for the allowed screen time.
- When the user undoes a "habit" completion, AntiScroll shall revert the habit progress and adjust the screentime allowance accordingly.
- When the user deletes a "habit", AntiScroll shall remove the habit and not adjust already allocated screentime allowance.


## State Driven Requirements
- While AntiScroll is in the "connected" state, it shall not ask for permissions to access IOS "screentime" functionality.
- While the user is creating a "habit", AntiScroll shall ask for name, how many times per day, which days of the week. How much screen time to allow.
- While the user is on the home screen, AntiScroll shall display the current habit progress and available screentime allowance.
- While the user's screentime is 0, AntiScroll shall not allow any further screen time until it is replenished according to the habit settings.


## Unwanted Behaviour Requirements
- If the user looks at an app when the allowance reaches 0, AntiScroll shall prevent access to the app until the screentime allowance is replenished according to the habit settings.
- If the user denies the permissions to access "IOS screentime" functionality, AntiScroll shall not be able to enforce app blocks and shall notify the user about the limited functionality.
- If the user undoes a "habit" completion and the available screen time allowance is less than the allowance granted by that completion, then AntiScroll shall prevent the undo and inform the user that the earned time has already been used.


## Technical Requirements
- AntiScroll shall be written in Swift.
