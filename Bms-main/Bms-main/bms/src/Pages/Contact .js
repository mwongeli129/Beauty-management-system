import React, { useRef, useState} from 'react';
import Scrollbutton from '../Components/Scrollbutton';
import axios from 'axios';
import emailjs from '@emailjs/browser';
import '../Css/contact.css'

const Contact = () => {
  const form = useRef();

  const sendEmail = (e) => {
    e.preventDefault();

    emailjs
      .sendForm('service_8ml0cb8', 'template_rhf0ikn', form.current, {
        publicKey: 'ZR5Xxf0yJH0hkSOx-',
      })
      .then(
        () => {
          console.log('SUCCESS!');
          console.log('message sent');
          alert("thank you for contacting freddy!")
        },
        (error) => {
          console.log('FAILED...', error.text);
        },
      );
  };

  const handleChange = (event) => {
    const name = event.target.name;
    const value = event.target.value;
    setInputs(values => ({ ...values, [name]: value }));
  }

  const [inputs, setInputs] = useState({});


  return (
    <div>
      <div className="contact">
        <div className="get-intouch">
          <h1>Get in <span>Touch</span> with Us</h1>
          <p>Feel free to reach out! We're here to assist you. Drop us a message, and let's start a conversation today.</p>
        </div>
        <div className="contact-division">
          <div className="c-div">
            <h3>Our Home Address</h3>
            <p>Mombasa, Tudor</p>
          </div>
          <div className="c-div">
            <h3>Our Email Address</h3>
            <p>esthermwongeeli@gmail.com</p>
          </div>
          <div className="c-div">
            <h3>Our Phone</h3>
            <p>+254  740290336</p>
            <p>+254  115030267</p>
          </div>
        </div>
        <div className="contact-b">
          <div className="form">
            <form ref={form} onSubmit={sendEmail}> 
              <div>
                <input
                  type="text"
                  id="text"
                  name="user_name"
                  placeholder="Your Name"
                  required
                  onChange={handleChange}
                />
                <input
                  type="email"
                  name="user_email"
                  placeholder="Your Email"
                  required
                  onChange={handleChange}
                />
                <input
                  type="tel"
                  name="user_tel"
                  placeholder="Your Number"
                  required
                  onChange={handleChange}
                />
              
                <textarea
                 name="message"
                 id="textarea"
                  placeholder="Enter Your message"
                  onChange={handleChange}
                ></textarea>
              </div>
              <button className="contact_button" type="submit" value="Send">Send Message</button>
            </form>
          </div>
          <div className="map"><h3>My Map Location</h3></div>
        </div>
      </div>
      <Scrollbutton />
    </div>
  );
};

export default Contact;
