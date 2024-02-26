const login = document.getElementsByName('login')[0];
const error = document.querySelector('error');

document.querySelector('button').addEventListener('click', (event) => 
{
    if (login.value === '')
    {
        error.innerHTML = "test"
        event.preventDefault();
    }
    
}
)