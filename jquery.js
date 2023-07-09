

/* login and signup */
const wrapper = document.querySelector('.wrapper');
const loginLink = document.querySelector('.login-link');
const registerLink = document.querySelector('.register-link');
const btnPopup = document.querySelector('.btnLogin-popup');
const iconClose = document.querySelector('.icon-close');

const profile = document.querySelector('.sub-menu-1');


registerLink.addEventListener ('click', ()=> {
  wrapper.classList.add('active')
 });

loginLink.addEventListener('click', ()=> {
  wrapper.classList.remove('active')
 });

btnPopup.addEventListener ('click', ()=> {
    wrapper.classList.add('active-popup')
   });

iconClose.addEventListener ('click', ()=> {
    wrapper.classList.add('active-popup')
   });

let pofile = document.getElementById('profile')

profile.addEventListener('click', ()=> {
  let profile = document.getElementById('profle').value
} )



let from = document.getElementById('input-box')

from.addEventListener('submit',() => {
  let email = document.getElementById('email').value
  let password = document.getElementById('password').value
})







// Example JavaScript code for a dashboard

// Fetch data from the server
function fetchData() {
  // Make an API request to fetch data from the server
  // Process the response and extract the necessary information
  // Update the dashboard with the retrieved data
}

// Update the dashboard with the data
function updateDashboard(data) {
  // Clear the existing dashboard content
  // Create HTML elements dynamically based on the data
  // Populate the elements with the data and append them to the dashboard container
}

// Handle user interactions or events on the dashboard
function handleDashboardEvents() {
  // Add event listeners to interactive elements (buttons, filters, etc.)
  // Fetch data based on user actions (e.g., clicking a button or changing a filter)
  // Update the dashboard with the new data
}

// Initialize the dashboard
function initializeDashboard() {
  fetchData(); // Fetch data from the server
  handleDashboardEvents(); // Set up event listeners and actions
}

// Call the initializeDashboard function to start the dashboard
initializeDashboard();
