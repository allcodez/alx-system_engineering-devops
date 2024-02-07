# Postmortem

Learning how to write an Incident Report, also referred to as a Postmortem. This postmortem follows the guidelines used closely by google engineers to file reports. The report is made up of five parts, an issue summary, a timeline, root cause analysis, resolution and recovery, and lastly, corrective and preventative measures. Lets review each of these parts in detail.

### Issue Summary

- short summary (5 sentences)
- list the duration along with start and end times (include timezone)
- state the impact (most user requests resulted in 500 errors, at peak 100%)
- close with root cause# Postmortem

This document serves as a guide for writing an Incident Report, also known as a Postmortem. It adheres closely to the guidelines utilized by Google engineers for filing reports. The report comprises five essential sections: Issue Summary, Timeline, Root Cause Analysis, Resolution and Recovery, and Corrective and Preventative Measures. Let's delve into each of these sections in detail.

## Issue Summary

The Issue Summary section provides a concise overview of the incident:

- It offers a brief summary, typically consisting of five sentences.
- Duration is specified, including start and end times along with the timezone.
- The impact is clearly stated, such as the occurrence of 500 errors in most user requests, with a peak of 100%.
- The summary concludes with the root cause of the incident.

## Timeline

In the Timeline section, the sequence of events leading up to and following the incident is outlined:

- The timezone is specified for clarity.
- The duration of the outage is documented.
- Key timestamps include when the outage commenced, when staff were notified, and significant actions or events during the incident.
- The timeline concludes with the restoration of service.

## Root Cause Analysis

The Root Cause Analysis section offers a detailed explanation of the incident:

- A comprehensive explanation of the events leading to the incident is provided.
- The analysis is objective and does not sugarcoat any aspect of the incident.

## Resolution and Recovery

The Resolution and Recovery section describes the actions taken to resolve the incident:

- Detailed explanations of the steps taken to resolve the issue are provided, including timestamps.
  
## Corrective and Preventative Measures

In the Corrective and Preventative Measures section, steps to prevent similar incidents in the future are outlined:

- An itemized list of measures to prevent recurrence is presented.
- Recommendations for improvement and ways to handle similar situations better in the future are included.


### Timeline

- list the timezone
- covers the outage duration
- when outage began
- when staff was notified
- actions, events, …
- when service was restored

### Root Cause

- give a detailed explanation of event
- do not sugarcoat

### Resolution and recovery

- give detailed explanation of actions taken (includes times)

### Corrective and Preventative Measures

- itemized list of ways to prevent it from happening again
- what can we do better next time?
