# Project 3: Postman Data Generation

In this project, I wanted to explore using some JavaScript libraries already built within Postman for some more complex tasks. 
Instead of using static files like in the other two projects, another goal of this project was to generate more varied test data directly in the scripts

**Goals:**
*   To try using bundled JavaScript libraries like Moment.js for dates and Lodash for data utilities.
*   To generate unique and dynamic test data on-the-fly using Postman's built-in dynamic variables such as `{{$randomFirstName}}`, combined with JavaScript.
*   To practice setting request bodies programmatically with `pm.request.body.update()` for better control.
*   To write tests that could handle and validate this dynamically generated and manipulated data.

**APIs I Used:**
*   Postman Echo: `https://postman-echo.com`
*   ReqRes.in: `https://reqres.in/api`
    Both were configured using base URLs in the `P5 Shared Env`.

**My Results:**
*   **Moment.js Task:** I successfully used Moment.js for date generation and validation. This required a workaround: I manually loaded the Moment.js library from a CDN in the pre-request script because the version bundled with my local Postman desktop app was not directly accessible.
*   **Lodash Task:** I faced similar issues accessing the bundled Lodash library. To achieve the data transformation goal, I successfully refactored the task to use native JavaScript array methods like `filter` and `map`, which was a good exercise.
*   **Dynamic Data for ReqRes Task:** This part worked perfectly. I dynamically generated user data using Postman variables and JavaScript, then POSTed it to ReqRes.in and validated the response.
*   Using `pm.request.body.update()` proved to be a reliable method for setting request bodies from scripts.

**Problems I Faced:**
*   The main challenge was the unexpected difficulty accessing bundled Moment.js and Lodash libraries in my Postman desktop sandbox; they threw `ReferenceError` or `TypeError`.
*   **Workarounds Implemented:**
    *   For Moment.js: I used `pm.sendRequest()` and `new Function()` to fetch and execute the library from a CDN.
    *   For Lodash: I chose to re-implement the needed transformations using plain JavaScript.
*   This project showed that while Postman bundles useful libraries, environment-specific issues can occur. Knowing how to find workarounds or use native JS alternatives is important. The tasks using Postman's native dynamic variables worked without any problems.