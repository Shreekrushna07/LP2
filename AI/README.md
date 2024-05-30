# Staff Issue Assignment System

## Description
This Prolog program assigns issues to staff members based on their expertise and tracks their availability.

## Features
- Define staff members and their categories.
- Define issue categories and their respective issues.
- Assign issues to available staff members.
- Manage staff availability.

## How to Use

### Defining Staff
```prolog
staff(john, technical).
staff(emma, technical).
staff(mark, billing).
staff(susan, general).
```

### Defining Availability
```prolog
available(john).
available(emma).
available(mark).
available(susan).
```

### Defining Issue Categories
```prolog
issue_category(technical, ['software', 'hardware', 'networking']).
issue_category(billing, ['payment', 'invoice']).
issue_category(general, ['other']).
```

### Assigning Issues
```prolog
assign_issue(Issue, Staff).
```
Example:
```prolog
?- assign_issue('software', Staff).
Staff = john.
```

### Releasing Staff
```prolog
release_staff(Staff).
```
Example:
```prolog
?- release_staff(john).
true.
```

## Requirements
- SWI-Prolog or any compatible Prolog interpreter.

## Running the Program
1. Save the code in a file (e.g., `staff_issue_assignment.pl`).
2. Open your Prolog interpreter.
3. Load the program:
   ```prolog
   ?- [staff_issue_assignment].
   ```
