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
            .font(.subheadline)
            .padding()
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
          
          SecureField("Enter your password", text: $password)
            .font(.subheadline)
            .padding()
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal)
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
          Text("Sign up")
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
