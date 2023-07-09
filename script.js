// script.js

// Fetch course data from the backend API
fetch('/api/courses/')
  .then(response => response.json())
  .then(data => {
    // Process the data and update the HTML elements
    data.forEach(course => {
      // Update HTML elements with the course data
      const courseTitleElement = document.createElement('h2');
      courseTitleElement.textContent = course.title;
      document.body.appendChild(courseTitleElement);
      
      // Add more code to display other course details
    });
  })
  .catch(error => {
    console.error('Error:', error);
  });
