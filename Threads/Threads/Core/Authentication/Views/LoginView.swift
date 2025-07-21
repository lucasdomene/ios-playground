import SwiftUI

struct LoginView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  
  var body: some View {
    NavigationStack {
      VStack {
        Spacer()
        
        Image("threads-app-icon")
          .resizable()
          .scaledToFit()
          .frame(width: 120, height: 120)
          .padding()
        
        VStack {
          TextField("Enter your email", text: $email)
            .textInputAutocapitalization(.never)
            .modifier(ThreadsTextFieldModifier())
          
          SecureField("Enter your password", text: $password)
            .modifier(ThreadsTextFieldModifier())
        }
        
        NavigationLink {
          Text("Forgot password?")
        } label: {
          Text("Forgot password?")
            .font(.footnote)
            .fontWeight(.semibold)
            .padding(.vertical)
            .padding(.trailing, 28)
            .foregroundStyle(.black)
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        
        NavigationLink {
          Text("Forgot password?")
        } label: {
          Text("Login")
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
        }
        
        Spacer()
        
        Divider()
        
        NavigationLink {
          RegistrationView()
            .navigationBarBackButtonHidden(true)
        } label: {
          HStack(spacing: 3) {
            Text("Don't have an account yet?")
            Text("Sign up")
              .fontWeight(.semibold)
          }
          .font(.footnote)
          .foregroundStyle(.black)
        }
        .padding()
      }
    }
  }
}

#Preview {
  LoginView()
}
