require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup information' do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: {
        user: {
          name: '',
          email: 'user.invalid',
          password: 'foo',
          password_confirmation: 'bar'
        }
      }
    end
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
    assert_template 'users/new'
  end

  test 'valid signup information' do
    get signup_path

    assert_difference 'User.count', 1 do
      post users_path, params: {
        user: {
          name: 'Gigil',
          email: 'gigil@keating.com',
          password: 'ilovefinch',
          password_confirmation: 'ilovefinch'
        }
      }
    end

    follow_redirect!
    assert_equal flash[:success], 'Welcome to the x-Clone!'
    assert_template 'users/show'
  end
end
