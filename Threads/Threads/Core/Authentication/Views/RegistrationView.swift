import SwiftUI

struct RegistrationView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var fullName: String = ""
  @State private var userName: String = ""
  
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    VStack(spacing: 16) {
      Spacer()
      
      Image("threads-app-icon")
        .resizable()
        .scaledToFit()
        .frame(width: 120, height: 120)
        .padding()
      
      VStack {
        TextField("Enter your email", text: $email)
          .modifier(ThreadsTextFieldModifier())
        
        SecureField("Enter your password", text: $password)
          .modifier(ThreadsTextFieldModifier())
        
        TextField("Enter your full name", text: $email)
          .modifier(ThreadsTextFieldModifier())
        
        TextField("Enter your username", text: $email)
          .modifier(ThreadsTextFieldModifier())
      }
      
      NavigationLink {
        Text("Forgot password?")
      } label: {
        Text("Sign Up")
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
      
      Button {
        dismiss()
      } label: {
        HStack(spacing: 3) {
          Text("Already have an account?")
          Text("Sign in")
            .fontWeight(.semibold)
        }
        .font(.footnote)
        .foregroundStyle(.black)
      }
      .padding()

    }
  }
}

#Preview {
  RegistrationView()
}
