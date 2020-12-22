module Web.View.Users.New where
import Web.View.Prelude

data NewView = NewView { user :: User }

instance View NewView where
    html NewView { .. } = [hsx|
        <div class="d-flex justify-content-center align-items-center">
            {renderForm user}
        </div>
    |]

renderForm :: User -> Html
renderForm user = formFor user [hsx|
    <div class="shadow p-5 rounded">
        <h1>Sign up</h1>
        {(textField #name) {fieldLabel = "Name"}}
        {(textField #username) {fieldLabel = "Username"}}
        {(textField #email) {fieldLabel = "E-Mail"}}
        <div class="d-flex">
            <div class="flex-fill mr-1">
                {(textField #passwordHash) {fieldLabel = "Password"}}
            </div>
            <div class="flex-fill ml-1">
                {(textField #passwordHash) {fieldName = "password2", fieldLabel = "Repeat Password"}}
            </div>
        </div>
        <div class="d-flex justify-content-end align-items-center">
            <a href={NewSessionAction} class="mr-4 text-dark">Login</a>
            <button class="btn btn-outline-dark">Sign up</button>
        </div>
    </div>
|]
