import React, { useState } from 'react';
import axios from 'axios';
import '../Css/MpesaPopup.css';

const MpesaPopup = ({ onClose, inputs }) => {
  const [amount, setAmount] = useState('');
  const [phoneNumber, setPhoneNumber] = useState('');

  const handleSend = async () => {
    try {
      const response = await axios.post('http://localhost/Esssie/initiatePayment.php', {
        amount: amount,
        phoneNumber: phoneNumber,
      }, {
        headers: {
          'Content-Type': 'application/json'
        }
      });
  
      const result = response.data;
      console.log('Response from server:', result);
      if (result.ResponseCode === '0') {
        alert('Please complete the payment on your phone');
        
      } else {
        alert('Payment initiation failed. Please try again.');
      }
    } catch (error) {
      alert('An error occurred. Please try again.');
      console.error('Error:', error);
    }
    onClose();
  };
  
  

  return (
    <div className="popup">
      <div className="popup-inner">
        <div className="mpesa">
        <h3>Enter Mpesa Details</h3>
        </div>
        <label>
          Amount:
          <input
            type="number"
            id="number"
            value={amount}
            onChange={(e) => setAmount(e.target.value)}
            placeholder="Input the Amout To Pay"
            required
          />
        </label>
        <label>
          Sender's Phone Number:
          <input
            type="tel"
            value={phoneNumber}
            onChange={(e) => setPhoneNumber(e.target.value)}
            placeholder="Write Your Phone Number"
            required
          />
        </label>
        <button id="send" onClick={handleSend}>Send</button>
        <button id="Cancel" onClick={onClose}>Cancel</button>
      </div>
    </div>
  );
};

export default MpesaPopup;
