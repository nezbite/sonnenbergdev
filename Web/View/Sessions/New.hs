module Web.View.Sessions.New where
import Web.View.Prelude
import IHP.AuthSupport.View.Sessions.New

instance View (NewView User) where
    html NewView { .. } = [hsx|
        <div class="d-flex justify-content-center align-items-center">
            {renderForm user}
        </div>
    |]

renderForm :: User -> Html
renderForm user = [hsx|
    <div class="shadow p-5 rounded w-50">
        <h1>Login</h1>
        <form method="POST" action={CreateSessionAction}>
            <div class="form-group">
                <label for="email">E-Mail</label>
                <input id="email" name="email" value={get #email user} type="email" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" type="password" class="form-control"/>
            </div>
            <div class="d-flex justify-content-end align-items-center">
                <a href={NewUserAction} class="mr-4 text-dark">Sign up</a>
                <button type="submit" class="btn btn-outline-dark">Login</button>
            </div>
        </form>
    </div>
|]