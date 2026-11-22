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
- AntiScroll shall always provide the users a way to unlock the apps from "IOS screentime" when needed.


## Event Driven Requirements
- When the user opens Antiscroll, AntiScroll shall ask for permissions to access "IOS screentime" functionality. To reach "connected" state
- When the user creates a "habit", AntiScroll shall open the habit creation interface.
- When the user blocks apps, AntiScroll shall tell "screentime" to enforce the block.
- When the user completes a "habit", AntiScroll shall record the completion and update the habit progress and fill the screentime allowance according to the habit settings.
- When the user unlocks screen time, AntiScroll shall start the timer for the allowed screen time.



## State Driven Requirements
- While AntiScroll is in the "connected" state, it shall not ask for permissions to access IOS "screentime" functionality.
- While the user is creating a "habit", AntiScroll shall ask for name, how many times per day, which days of the week. How much screen time to allow.
- While the user is on the home screen, AntiScroll shall display the current habit progress and available screentime allowance.
- While the users screentime is 0, AntiScroll shall not allow any further screen time until it is replenished according to the habit settings.


